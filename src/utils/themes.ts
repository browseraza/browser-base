import { lightTheme, darkTheme } from '~/renderer/constants/themes';

export const getTheme = (name: string) => {
  if (name === 'browseraza-light') return lightTheme;
  else if (name === 'browseraza-dark') return darkTheme;
  return lightTheme;
};
