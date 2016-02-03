<?php
/**
 * @package     Joomla.Platform
 * @subpackage  Crypt
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */

defined('JPATH_PLATFORM') or die;

/**
 * JCrypt cipher for Triple DES encryption, decryption and key generation.
 *
 * @since  12.1
 */
class JCryptCipher3Des extends JCryptCipherMcrypt
{
	/**
	 * @var    integer  The mcrypt cipher constant.
	 * @see    http://www.php.net/manual/en/mcrypt.ciphers.php
	 * @since  12.1
	 */
	protected $type = MCRYPT_3DES;

	/**
	 * @var    integer  The mcrypt block cipher mode.
	 * @see    http://www.php.net/manual/en/mcrypt.constants.php
	 * @since  12.1
	 */
	protected $mode = MCRYPT_MODE_CBC;

	/**
	 * @var    string  The JCrypt key type for validation.
	 * @since  12.1
	 */
	protected $keyType = '3des';
}
