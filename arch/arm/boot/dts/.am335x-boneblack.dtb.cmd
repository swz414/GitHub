cmd_arch/arm/boot/dts/am335x-boneblack.dtb := mkdir -p arch/arm/boot/dts/ ; arm-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/boot/dts/.am335x-boneblack.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.am335x-boneblack.dtb.dts.tmp arch/arm/boot/dts/am335x-boneblack.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/am335x-boneblack.dtb -b 0 -i arch/arm/boot/dts/  -d arch/arm/boot/dts/.am335x-boneblack.dtb.d.dtc.tmp arch/arm/boot/dts/.am335x-boneblack.dtb.dts.tmp ; cat arch/arm/boot/dts/.am335x-boneblack.dtb.d.pre.tmp arch/arm/boot/dts/.am335x-boneblack.dtb.d.dtc.tmp > arch/arm/boot/dts/.am335x-boneblack.dtb.d

source_arch/arm/boot/dts/am335x-boneblack.dtb := arch/arm/boot/dts/am335x-boneblack.dts

deps_arch/arm/boot/dts/am335x-boneblack.dtb := \
  arch/arm/boot/dts/am33xx.dtsi \
  arch/arm/boot/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/include/dt-bindings/pinctrl/am33xx.h \
  arch/arm/boot/dts/include/dt-bindings/pinctrl/omap.h \
  arch/arm/boot/dts/skeleton.dtsi \
  arch/arm/boot/dts/am335x-bone-common.dtsi \
  arch/arm/boot/dts/am33xx-clocks.dtsi \
  arch/arm/boot/dts/tps65217.dtsi \

arch/arm/boot/dts/am335x-boneblack.dtb: $(deps_arch/arm/boot/dts/am335x-boneblack.dtb)

$(deps_arch/arm/boot/dts/am335x-boneblack.dtb):
