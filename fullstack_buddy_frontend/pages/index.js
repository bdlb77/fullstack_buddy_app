import React from 'react';
import Head from 'next/head';
import styled from 'styled-components';
import Slogan from '../components/Slogan';
import LandingMain from '../components/LandingMain';

const HomeStyles = styled.div`
	display: flex;
	flex-direction: column;
	height: 100%;

	.footer_area {
		height: 40vh;
	}
`;

const Home = () => (
	<HomeStyles>
		<Head>
			<title>Home</title>
			<link rel="icon" href="/static/favicon.ico" importance="low" />
		</Head>
		<Slogan />
		<LandingMain />
		<div className="footer_area"></div>
	</HomeStyles>
);

export default Home;
