cmd_arch/arm/boot/dts/myd_j335x.dtb := mkdir -p arch/arm/boot/dts/ ; arm-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/boot/dts/.myd_j335x.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.myd_j335x.dtb.dts.tmp arch/arm/boot/dts/myd_j335x.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/myd_j335x.dtb -b 0 -i arch/arm/boot/dts/  -d arch/arm/boot/dts/.myd_j335x.dtb.d.dtc.tmp arch/arm/boot/dts/.myd_j335x.dtb.dts.tmp ; cat arch/arm/boot/dts/.myd_j335x.dtb.d.pre.tmp arch/arm/boot/dts/.myd_j335x.dtb.d.dtc.tmp > arch/arm/boot/dts/.myd_j335x.dtb.d

source_arch/arm/boot/dts/myd_j335x.dtb := arch/arm/boot/dts/myd_j335x.dts

deps_arch/arm/boot/dts/myd_j335x.dtb := \
  arch/arm/boot/dts/am33xx.dtsi \
  arch/arm/boot/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/boot/dts/include/dt-bindings/pinctrl/am33xx.h \
  arch/arm/boot/dts/include/dt-bindings/pinctrl/omap.h \
  arch/arm/boot/dts/skeleton.dtsi \
  arch/arm/boot/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/tps65217.dtsi \
  arch/arm/boot/dts/am33xx-clocks.dtsi \

arch/arm/boot/dts/myd_j335x.dtb: $(deps_arch/arm/boot/dts/myd_j335x.dtb)

$(deps_arch/arm/boot/dts/myd_j335x.dtb):
