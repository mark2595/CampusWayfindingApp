declare module '@capacitor/core' {
  interface PluginRegistry {
    cwa: cwaPlugin;
  }
}

export interface cwaPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
