import React, { Component } from 'react';
import Meta from '../meta/Meta';
import styled, { ThemeProvider, createGlobalStyle } from 'styled-components';
// import DeliusUnicaseRegular from '../../static/DeliusUnicase-Regular.ttf';
const theme = {
	gunmetal: '#292F36',
	burgundy: '#732427',
	grey: '#747572',
	snow: '#E0E0E0',
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
  }
  a{
    text-decoration: none;
    color: ${theme.burgundy};
  }
`;
class Page extends Component {
	render() {
		return (
			<ThemeProvider theme={theme}>
				<GlobalStyles />
				<Meta></Meta>
				<div>{this.props.children}</div>
			</ThemeProvider>
		);
	}
}

export default Page;
