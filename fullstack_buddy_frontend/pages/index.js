import React from 'react';
import Head from 'next/head';
import Nav from '../components/nav';
import styled from 'styled-components';

const HomeStyles = styled.div``;

const Home = () => (
	<HomeStyles>
		<Head>
			<title>Home</title>
			<link rel="icon" href="/static/favicon.ico" importance="low" />
		</Head>

		<h1>Welcome To Full Stack Buddy. Your FB.</h1>
	</HomeStyles>
);

export default Home;
