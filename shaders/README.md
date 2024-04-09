Um die Shader-Dateien zu erstellen, muss eine Bash-Shell mit glslc ausgeführt werden, das in der Vulkan-SDK verfügbar ist.
Beispiel für die bash datei
/home/<usr>/SDK_libs_etc/1.3.280.1/x86_64/bin/glslc shader.vert -o vert.spv
/home/<usr>/SDK_libs_etc/1.3.280.1/x86_64/bin/glslc shader.frag -o frag.spv

Diese Befehle kompilieren shader.vert und shader.frag in SPIR-V-Dateien vert.spv und frag.spv.

-----------------------------------------------------------------------------------------------------------

To generate the shader files, you need to execute a bash with glslc which is available in the Vulkan SDK.

Example for the bash file

/home/<usr>/SDK_libs_etc/1.3.280.1/x86_64/bin/glslc shader.vert -o vert.spv
/home/<usr>/SDK_libs_etc/1.3.280.1/x86_64/bin/glslc shader.frag -o frag.spv

These commands compile shader.vert and shader.frag into SPIR-V files vert.spv and frag.spv.