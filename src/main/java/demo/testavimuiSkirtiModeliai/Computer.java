package demo.testavimuiSkirtiModeliai;

import java.util.List;

public class Computer {
    String name, processor, ram, screen;
    Antras antras;
    List<String> trecias;
    Ketvirtas ketvirtas;

    public Computer() {
    }

    public Computer(String name, String processor, String ram, String screen, Antras antras, List<String> trecias, Ketvirtas ketvirtas) {
        this.name = name;
        this.processor = processor;
        this.ram = ram;
        this.screen = screen;
        this.antras = antras;
        this.trecias = trecias;
        this.ketvirtas = ketvirtas;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
        this.processor = processor;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public Antras getAntras() {
        return antras;
    }

    public void setAntras(Antras antras) {
        this.antras = antras;
    }

    public List<String> getTrecias() {
        return trecias;
    }

    public void setTrecias(List<String> trecias) {
        this.trecias = trecias;
    }

    public Ketvirtas getKetvirtas() {
        return ketvirtas;
    }

    public void setKetvirtas(Ketvirtas ketvirtas) {
        this.ketvirtas = ketvirtas;
    }
}
