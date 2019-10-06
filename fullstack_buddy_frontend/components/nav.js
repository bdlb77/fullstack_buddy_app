import React from 'react';
import Link from 'next/link';
import styled from 'styled-components';

const StyledNav = styled.nav`
	display: flex;
	align-items: center;
	justify-content: space-evenly;
	height: 70px;
	color: ${props => props.theme.mediumText};
	ul {
		display: flex;
		justify-content: space-around;
		font-size: 2.5rem;
		margin-right: 3rem;
		width: 100%;

		a {
			cursor: pointer;
		}
	}

	@media screen and (min-width: 769px) {
		justify-content: flex-end;
		ul {
			flex-basis: 350px;
			justify-content: space-around;
		}
	}
`;

const Nav = () => (
	<StyledNav>
		<ul>
			<li>
				<Link href="/">
					<a>Login</a>
				</Link>
			</li>
			||
			<li>
				<Link herf="/">
					<a>SignUp</a>
				</Link>
			</li>
		</ul>
	</StyledNav>
);

export default Nav;
