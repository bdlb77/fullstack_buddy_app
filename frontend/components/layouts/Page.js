import React, { Component } from 'react';
import Meta from '../meta/Meta';
import styled, { ThemeProvider, createGlobalStyle } from 'styled-components';
import Nav from '../nav';
// import DeliusUnicaseRegular from '../../static/DeliusUnicase-Regular.ttf';
const theme = {
	primaryBg: '#495056',
	secondaryBg: '#C8DAD3',
	primary: '#3F3D56',
	secondary: '#93B5B3',
	mediumText: '#63707E',
	grey: '#F8F9FA',
	white: '#fff',
	accent: '#FFE0C5',
	maxWidth: '1000px',
	bs: '0 12px 24px 0 rgba(0, 0, 0, 0.09)',
	lgBreak: '1300px',
};

const GlobalStyles = createGlobalStyle` 
    @font-face {
      font-family: 'delius_unicase_bold';
      src: url('/static/DeliusUnicase-Bold.ttf') format('TrueType');
      font-weight: bold;
    }
    @font-face {
      font-family: 'delius_unicase';
      src: url('/static/DeliusUnicase-Regular.ttf') format('truetype');
      font-weight: regular;
    }
  html{
    box-sizing: border-box;
    font-size: 10px;
    /* @font-face {
      font-family: 'delius_unicase' ;
      src: url('/static/DeliusUnicase-Bold.ttf') format('ttf');
      font-weight: bold;
      font-style: normal;
    } */
  }

  *, *:before, *:after {
    box-sizing: inherit;
  }

  body{
    padding: 0;
    margin: 0;
    font-size: 2rem;
    line-height: 2;
    font-family: 'delius_unicase_bold';
    background-color: ${theme.grey};
    color: ${theme.primary}
    min-height: 100vh;
    max-width: 100vw;
    & > div {
      min-height: 100vh;
    } 
  }
  a{
    text-decoration: none;
    color: ${theme.mediumText};
  }
  ul {
    list-style: none;
  }
`;

const Inner = styled.div`
	/* height: calc(100vh - 70px); */
`;
class Page extends Component {
	render() {
		return (
			<ThemeProvider theme={theme}>
				<GlobalStyles />
				<Meta />
				<Nav />
				<Inner>{this.props.children}</Inner>
			</ThemeProvider>
		);
	}
}

export default Page;
