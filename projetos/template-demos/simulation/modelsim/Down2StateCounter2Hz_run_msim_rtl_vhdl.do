transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/maomv/Repositories/laboratorio-de-sistemas-digitais/projetos/projeto-demo-1/GeradorPulsosN.vhd}

