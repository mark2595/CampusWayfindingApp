import { WebPlugin } from '@capacitor/core';
import { cwaPlugin } from './definitions';

export class cwaWeb extends WebPlugin implements cwaPlugin {
  constructor() {
    super({
      name: 'cwa',
      platforms: ['web'],
    });
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

const cwa = new cwaWeb();

export { cwa };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(cwa);
