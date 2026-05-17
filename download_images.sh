#!/usr/bin/env zsh
# Download all DreamPlay images at highest quality (2500w)

IMAGES_DIR="$(dirname "$0")/images"
mkdir -p "$IMAGES_DIR"

BASE="https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8"

download() {
  local filename="$1"
  local url="$2"
  local dest="$IMAGES_DIR/$filename"
  if [[ -f "$dest" ]]; then
    echo "  [SKIP] $filename"
    return
  fi
  echo "  [DL]   $filename"
  if curl -sL --max-time 30 -o "$dest" "$url"; then
    local size=$(du -sh "$dest" 2>/dev/null | cut -f1)
    echo "         -> $size"
  else
    echo "         -> FAILED"
  fi
}

# Logo
download "logo.png"             "$BASE/1606086248804-I8OTG5ITTX49ZF7M2QO1/Asset+1.png?format=2500w"

# Homepage gallery
download "costa-rica.jpg"       "$BASE/1605939510470-E0EGL46053M1UDF6IAWG/Costa+Rica.jpg?format=2500w"
download "img-4534.jpg"         "$BASE/1605939558754-N4T786JM1O4HXXE5YY7F/IMG_4534-EDIT.jpg?format=2500w"
download "img-20170604.jpg"     "$BASE/1605939644938-YLQSZ2ZUM3A5EPT0TGDB/IMG_20170604_113449+%281%29.jpg?format=2500w"
download "img-4545.jpg"         "$BASE/1605939654851-F7MB0AX8QX24HMBRXCAC/IMG_4545.jpg?format=2500w"
download "img-4648.jpg"         "$BASE/1605939655848-U72VIAJWCM41UDZL5N12/IMG_4648-2.jpg?format=2500w"
download "img-4958.jpg"         "$BASE/1605939663016-Z5AA3TR2XFCTGPD78G13/IMG_4958-2.jpg?format=2500w"
download "img-4940.jpg"         "$BASE/1605939663126-HC4RHL6182IDLVTJQA4Q/IMG_4940-EDIT.jpg?format=2500w"
download "img-4288.jpg"         "$BASE/1605939766471-S40TK05AADU9LM7YM4SG/IMG_4288.jpg?format=2500w"
download "img-4338.jpg"         "$BASE/1605939768820-9AP3RHLN9MBY4Z7I1X7B/IMG_4338.jpg?format=2500w"
download "img-4284.jpg"         "$BASE/1605939771571-TQPRYBJZ5LM5UG6J4WNA/IMG_4284.jpg?format=2500w"
download "img-4293.jpg"         "$BASE/1605939773050-WEIZSSQ3II96TICIQCDT/IMG_4293.jpg?format=2500w"
download "museo-ninos.jpg"      "$BASE/1605983868663-EX9ONPWDNWPFHRDHKUOH/Museo+De+Los+Ni%C3%B1os.jpg?format=2500w"
download "img-5063.jpg"         "$BASE/1606086532294-JUDDV3ODTONRH6VTT4YT/IMG_5063.jpg?format=2500w"
download "img-20181025.jpg"     "$BASE/1606086783189-IZJ63IBY6VE7C8G1TDJU/20181025_150458.jpg?format=2500w"
download "guatemala1.jpg"       "$BASE/1606088107355-Q17FQLPZ73SWWRIOKQMX/Guatemala1.jpg?format=2500w"
download "img-9143.jpg"         "$BASE/1606088132846-KD5LRXWPOFNFASRU6S9B/IMG_9143.jpg?format=2500w"
download "img-8768.jpg"         "$BASE/1606088143564-Y9GNUP17ZQHLFV4PKR25/IMG_8768.jpg?format=2500w"
download "img-2457.jpg"         "$BASE/1606088147541-0YLCA3NCI4NDU3TF7MON/IMG_2457.jpg?format=2500w"
download "img-2326.jpg"         "$BASE/1606088151217-AG8CBRO7BOYAM4WEFR3W/IMG_2326.jpg?format=2500w"
download "img-20180226.jpg"     "$BASE/1606088526169-FFYP9MIBG4DVCFIAH2HN/20180226_144309.jpg?format=2500w"
download "los-angeles.jpg"      "$BASE/1606089005218-NPPF4X17H6ZWFV6VGB30/Los+Angeles.jpg?format=2500w"
download "img-20170414-a.jpg"   "$BASE/1606089081444-QQD7OHMP7P1XA9KW8DGS/20170414_092845.jpg?format=2500w"
download "img-20170414-b.jpg"   "$BASE/1606089093011-F21ZB7Y3AVF6JRBZ8F2T/20170414_231351.jpg?format=2500w"
download "img-20170413.jpg"     "$BASE/1606089463421-RJOKP8NFJDN094TEZCXJ/IMG_20170413_183317.jpg?format=2500w"
download "img-20170414-c.jpg"   "$BASE/1606089723222-IAZBI7GAWNO79T67LUXH/IMG_20170414_142147.jpg?format=2500w"
download "sf-bridge.jpg"        "$BASE/1606090814836-G73Y6C1EC6WBVDQ5FKXU/SF_bridge_1200x800.jpg?format=2500w"
download "img-20171210.jpg"     "$BASE/1606090951191-9LCU858YOIKLGLLR5IKV/20171210_162431-EFFECTS.jpg?format=2500w"
download "img-20161207.jpg"     "$BASE/1606091052083-96MKMJGG9TRCKZUSQK8F/20161207_125326_HDR.jpg?format=2500w"
download "img-20161208.jpg"     "$BASE/1606091053985-6H3T4Q7OLCITX4TK93AJ/20161208_112142_HDR.jpg?format=2500w"
download "img-20161028.jpg"     "$BASE/1606091126939-WA2JFC5F7MLFLUL2V2SW/20161028_134009.jpg?format=2500w"
download "maxresdefault.jpg"    "$BASE/1606091442656-AQ82T1QIZM85PVKI4VBX/maxresdefault.jpg?format=2500w"
download "whatsapp-20201122.jpg" "$BASE/1606093199971-KYNT4F2SCB34XD9252V1/WhatsApp+Image+2020-11-22+at+18.58.15.jpeg?format=2500w"
download "fb-img.jpg"           "$BASE/1606093424619-YCBZ5LTF913FMJ83WO65/FB_IMG_1447994186475.jpg?format=2500w"
download "img-9887.gif"         "$BASE/1606093492728-AX1MMFYBV6ZD2PTMBOHA/IMG_9887-ANIMATION.gif"
download "samsung-dlight-opt.jpg" "$BASE/1606093622447-6KQF6M27BXDI0XTGROKN/samsung_dlight_ps_25_opt.jpg?format=2500w"
download "samsung-dlight-exp.jpg" "$BASE/1606094066754-AMJJQVE2X4PVFOL7CP9T/Samsung-dlight-experience-samsung-headquarters-vr-samsung-virtual-reality-things-to-do-in-seoul-what-to-do-in-seoul-korea.jpg?format=2500w"
download "img-2372.jpg"         "$BASE/1606183914286-1QU0SW1Z4CSGZFVDGVW1/IMG_2372.jpg?format=2500w"
download "dsc02587.jpg"         "$BASE/1606184006490-GR1EJZVMEUAUZU56EF6Q/DSC02587.jpg?format=2500w"
download "img-20171031.jpg"     "$BASE/1606184071263-TBFE7HP9XGQN463MV1ZB/IMG_20171031_220438.jpg?format=2500w"

# Stories page
download "image-asset.jpg"      "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606178385164-6DB2YHS596ZPPZUJNVDB/image-asset.jpeg?format=2500w"
download "img-4293-stories.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606182701796-MTEPVESS9WAN7RT27ANK/IMG_4293.jpg?format=2500w"
download "img-20171115.jpg"     "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606182952223-CF5THTSGQEB0MWM367PX/IMG_20171115_142917.jpg?format=2500w"
download "team-photo.jpg"       "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606246461780-6G6C8155BWBJSJJ6TXBM/745ad17b-22cf-49a8-967a-303c55e23d06.jpg?format=2500w"
download "marvin-meyer.jpg"     "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606246786875-GZXJZGKQMDDT4EKZO2JD/marvin-meyer-SYTO3xs06fU-unsplash.jpg?format=2500w"
download "whatsapp-20201124-a.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606257198594-ZKKO0AIH3FL4OSN5T2ZX/WhatsApp+Image+2020-11-24+at+16.27.13.jpeg?format=2500w"
download "whatsapp-20201124-b.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606258065771-NX6UHSFGL0EKQT2QSXGN/WhatsApp+Image+2020-11-24+at+16.47.08.jpeg?format=2500w"
download "whatsapp-20201124-c.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606278224172-JOJI9LF4J74BUT95T7S9/WhatsApp+Image+2020-11-24+at+22.16.29.jpeg?format=2500w"
download "whatsapp-20201124-d.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606321384311-3LAYV7Z5KDMPKZ8V0T6V/WhatsApp+Image+2020-11-24+at+23.18.03.jpeg?format=2500w"
download "whatsapp-20201124-e.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606338339697-CDBGG9OK0G8Y3X246Y3K/WhatsApp+Image+2020-11-24+at+23.18.03.jpeg?format=2500w"
download "untitled.png"         "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1606339923920-4S70OK83T7OTHR664SCT/Untitled.png?format=2500w"
download "whatsapp-20201217.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1608264867954-X8NJGP6IT8CLPF3URGYI/WhatsApp+Image+2020-12-17+at+22.13.45.jpeg?format=2500w"
download "donald-giannatti.jpg" "https://images.squarespace-cdn.com/content/v1/5fb8aa5eace09132f47e3dc8/1614552606921-7E2B1L1VCUVAV3RNT5DW/donald-giannatti-Wj1D-qiOseE-unsplash.jpg?format=2500w"

echo ""
echo "All downloads complete. Images saved to: $IMAGES_DIR"
ls -lh "$IMAGES_DIR" | tail -5
