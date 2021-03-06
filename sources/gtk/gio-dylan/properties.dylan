module: gio-properties
synopsis: generated bindings for the Gio library
copyright: See LICENSE file in this distribution.

define property-setter format :: <GZlibCompressorFormat> on <GZlibDecompressor> end;
define property-getter format :: <GZlibCompressorFormat> on <GZlibDecompressor> end;
define property-getter file-info :: <GFileInfo> on <GZlibDecompressor> end;
define property-setter level :: <C-signed-int> on <GZlibCompressor> end;
define property-getter level :: <C-signed-int> on <GZlibCompressor> end;
define property-setter format :: <GZlibCompressorFormat> on <GZlibCompressor> end;
define property-getter format :: <GZlibCompressorFormat> on <GZlibCompressor> end;
define property-setter file-info :: <GFileInfo> on <GZlibCompressor> end;
define property-getter file-info :: <GFileInfo> on <GZlibCompressor> end;
define property-setter path-as-array :: <GByteArray> on <GUnixSocketAddress> end;
define property-getter path-as-array :: <GByteArray> on <GUnixSocketAddress> end;
define property-setter path :: <C-string> on <GUnixSocketAddress> end;
define property-getter path :: <C-string> on <GUnixSocketAddress> end;
define property-setter address-type :: <GUnixSocketAddressType> on <GUnixSocketAddress> end;
define property-getter address-type :: <GUnixSocketAddressType> on <GUnixSocketAddress> end;
define property-setter abstract :: <C-boolean> on <GUnixSocketAddress> end;
define property-getter abstract :: <C-boolean> on <GUnixSocketAddress> end;
define property-setter fd :: <C-signed-int> on <GUnixOutputStream> end;
define property-getter fd :: <C-signed-int> on <GUnixOutputStream> end;
define property-setter close-fd :: <C-boolean> on <GUnixOutputStream> end;
define property-getter close-fd :: <C-boolean> on <GUnixOutputStream> end;
define property-setter fd :: <C-signed-int> on <GUnixInputStream> end;
define property-getter fd :: <C-signed-int> on <GUnixInputStream> end;
define property-setter close-fd :: <C-boolean> on <GUnixInputStream> end;
define property-getter close-fd :: <C-boolean> on <GUnixInputStream> end;
define property-setter fd-list :: <GUnixFDList> on <GUnixFDMessage> end;
define property-getter fd-list :: <GUnixFDList> on <GUnixFDMessage> end;
define property-setter credentials :: <GCredentials> on <GUnixCredentialsMessage> end;
define property-getter credentials :: <GCredentials> on <GUnixCredentialsMessage> end;
define property-setter warning :: <C-string> on <GTlsPassword> end;
define property-getter warning :: <C-string> on <GTlsPassword> end;
define property-setter flags :: <GTlsPasswordFlags> on <GTlsPassword> end;
define property-getter flags :: <GTlsPasswordFlags> on <GTlsPassword> end;
define property-setter description :: <C-string> on <GTlsPassword> end;
define property-getter description :: <C-string> on <GTlsPassword> end;
define property-setter use-system-certdb :: <C-boolean> on <GTlsConnection> end;
define property-getter use-system-certdb :: <C-boolean> on <GTlsConnection> end;
define property-setter require-close-notify :: <C-boolean> on <GTlsConnection> end;
define property-getter require-close-notify :: <C-boolean> on <GTlsConnection> end;
define property-setter rehandshake-mode :: <GTlsRehandshakeMode> on <GTlsConnection> end;
define property-getter rehandshake-mode :: <GTlsRehandshakeMode> on <GTlsConnection> end;
define property-getter peer-certificate-errors :: <GTlsCertificateFlags> on <GTlsConnection> end;
define property-getter peer-certificate :: <GTlsCertificate> on <GTlsConnection> end;
define property-setter interaction :: <GTlsInteraction> on <GTlsConnection> end;
define property-getter interaction :: <GTlsInteraction> on <GTlsConnection> end;
define property-setter database :: <GTlsDatabase> on <GTlsConnection> end;
define property-getter database :: <GTlsDatabase> on <GTlsConnection> end;
define property-setter certificate :: <GTlsCertificate> on <GTlsConnection> end;
define property-getter certificate :: <GTlsCertificate> on <GTlsConnection> end;
define property-setter base-io-stream :: <GIOStream> on <GTlsConnection> end;
define property-getter base-io-stream :: <GIOStream> on <GTlsConnection> end;
define property-setter private-key-pem :: <C-string> on <GTlsCertificate> end;
define property-setter private-key :: <GByteArray> on <GTlsCertificate> end;
define property-setter issuer :: <GTlsCertificate> on <GTlsCertificate> end;
define property-getter issuer :: <GTlsCertificate> on <GTlsCertificate> end;
define property-setter certificate-pem :: <C-string> on <GTlsCertificate> end;
define property-getter certificate-pem :: <C-string> on <GTlsCertificate> end;
define property-setter certificate :: <GByteArray> on <GTlsCertificate> end;
define property-getter certificate :: <GByteArray> on <GTlsCertificate> end;
define property-setter max-threads :: <C-signed-int> on <GThreadedSocketService> end;
define property-getter max-threads :: <C-signed-int> on <GThreadedSocketService> end;
define property-setter use-default-fallbacks :: <C-boolean> on <GThemedIcon> end;
define property-getter use-default-fallbacks :: <C-boolean> on <GThemedIcon> end;
define property-setter names :: <C-string*> on <GThemedIcon> end;
define property-getter names :: <C-string*> on <GThemedIcon> end;
define property-setter name :: <C-string> on <GThemedIcon> end;
define property-setter base-io-stream :: <GIOStream> on <GTcpWrapperConnection> end;
define property-getter base-io-stream :: <GIOStream> on <GTcpWrapperConnection> end;
define property-setter graceful-disconnect :: <C-boolean> on <GTcpConnection> end;
define property-getter graceful-disconnect :: <C-boolean> on <GTcpConnection> end;
define property-setter listen-backlog :: <C-signed-int> on <GSocketListener> end;
define property-getter listen-backlog :: <C-signed-int> on <GSocketListener> end;
define property-setter socket :: <GSocket> on <GSocketConnection> end;
define property-getter socket :: <GSocket> on <GSocketConnection> end;
define property-setter type :: <GSocketType> on <GSocketClient> end;
define property-getter type :: <GSocketType> on <GSocketClient> end;
define property-setter tls-validation-flags :: <GTlsCertificateFlags> on <GSocketClient> end;
define property-getter tls-validation-flags :: <GTlsCertificateFlags> on <GSocketClient> end;
define property-setter tls :: <C-boolean> on <GSocketClient> end;
define property-getter tls :: <C-boolean> on <GSocketClient> end;
define property-setter timeout :: <C-unsigned-int> on <GSocketClient> end;
define property-getter timeout :: <C-unsigned-int> on <GSocketClient> end;
define property-setter protocol :: <GSocketProtocol> on <GSocketClient> end;
define property-getter protocol :: <GSocketProtocol> on <GSocketClient> end;
define property-setter local-address :: <GSocketAddress> on <GSocketClient> end;
define property-getter local-address :: <GSocketAddress> on <GSocketClient> end;
define property-setter family :: <GSocketFamily> on <GSocketClient> end;
define property-getter family :: <GSocketFamily> on <GSocketClient> end;
define property-setter enable-proxy :: <C-boolean> on <GSocketClient> end;
define property-getter enable-proxy :: <C-boolean> on <GSocketClient> end;
define property-getter family :: <GSocketFamily> on <GSocketAddress> end;
define property-setter type :: <GSocketType> on <GSocket> end;
define property-getter type :: <GSocketType> on <GSocket> end;
define property-setter ttl :: <C-unsigned-int> on <GSocket> end;
define property-getter ttl :: <C-unsigned-int> on <GSocket> end;
define property-setter timeout :: <C-unsigned-int> on <GSocket> end;
define property-getter timeout :: <C-unsigned-int> on <GSocket> end;
define property-getter remote-address :: <GSocketAddress> on <GSocket> end;
define property-setter protocol :: <GSocketProtocol> on <GSocket> end;
define property-getter protocol :: <GSocketProtocol> on <GSocket> end;
define property-setter multicast-ttl :: <C-unsigned-int> on <GSocket> end;
define property-getter multicast-ttl :: <C-unsigned-int> on <GSocket> end;
define property-setter multicast-loopback :: <C-boolean> on <GSocket> end;
define property-getter multicast-loopback :: <C-boolean> on <GSocket> end;
define property-getter local-address :: <GSocketAddress> on <GSocket> end;
define property-setter listen-backlog :: <C-signed-int> on <GSocket> end;
define property-getter listen-backlog :: <C-signed-int> on <GSocket> end;
define property-setter keepalive :: <C-boolean> on <GSocket> end;
define property-getter keepalive :: <C-boolean> on <GSocket> end;
define property-setter fd :: <C-signed-int> on <GSocket> end;
define property-getter fd :: <C-signed-int> on <GSocket> end;
define property-setter family :: <GSocketFamily> on <GSocket> end;
define property-getter family :: <GSocketFamily> on <GSocket> end;
define property-setter broadcast :: <C-boolean> on <GSocket> end;
define property-getter broadcast :: <C-boolean> on <GSocket> end;
define property-setter blocking :: <C-boolean> on <GSocket> end;
define property-getter blocking :: <C-boolean> on <GSocket> end;
define property-getter state-type :: <GVariantType> on <GSimpleAction> end;
define property-setter state :: <GVariant> on <GSimpleAction> end;
define property-getter state :: <GVariant> on <GSimpleAction> end;
define property-setter parameter-type :: <GVariantType> on <GSimpleAction> end;
define property-getter parameter-type :: <GVariantType> on <GSimpleAction> end;
define property-setter name :: <C-string> on <GSimpleAction> end;
define property-getter name :: <C-string> on <GSimpleAction> end;
define property-setter enabled :: <C-boolean> on <GSimpleAction> end;
define property-getter enabled :: <C-boolean> on <GSimpleAction> end;
define property-setter settings-schema :: <GSettingsSchema> on <GSettings> end;
define property-getter settings-schema :: <GSettingsSchema> on <GSettings> end;
define property-setter schema-id :: <C-string> on <GSettings> end;
define property-getter schema-id :: <C-string> on <GSettings> end;
define property-setter schema :: <C-string> on <GSettings> end;
define property-getter schema :: <C-string> on <GSettings> end;
define property-setter path :: <C-string> on <GSettings> end;
define property-getter path :: <C-string> on <GSettings> end;
define property-getter has-unapplied :: <C-boolean> on <GSettings> end;
define property-getter delay-apply :: <C-boolean> on <GSettings> end;
define property-setter uri :: <C-string> on <GProxyAddressEnumerator> end;
define property-getter uri :: <C-string> on <GProxyAddressEnumerator> end;
define property-setter connectable :: <GSocketConnectable> on <GProxyAddressEnumerator> end;
define property-getter connectable :: <GSocketConnectable> on <GProxyAddressEnumerator> end;
define property-setter username :: <C-string> on <GProxyAddress> end;
define property-getter username :: <C-string> on <GProxyAddress> end;
define property-setter protocol :: <C-string> on <GProxyAddress> end;
define property-getter protocol :: <C-string> on <GProxyAddress> end;
define property-setter password :: <C-string> on <GProxyAddress> end;
define property-getter password :: <C-string> on <GProxyAddress> end;
define property-setter destination-port :: <C-unsigned-int> on <GProxyAddress> end;
define property-getter destination-port :: <C-unsigned-int> on <GProxyAddress> end;
define property-setter destination-hostname :: <C-string> on <GProxyAddress> end;
define property-getter destination-hostname :: <C-string> on <GProxyAddress> end;
define property-getter can-release :: <C-boolean> on <GPermission> end;
define property-getter can-acquire :: <C-boolean> on <GPermission> end;
define property-getter allowed :: <C-boolean> on <GPermission> end;
define property-setter service :: <C-string> on <GNetworkService> end;
define property-getter service :: <C-string> on <GNetworkService> end;
define property-setter scheme :: <C-string> on <GNetworkService> end;
define property-getter scheme :: <C-string> on <GNetworkService> end;
define property-setter protocol :: <C-string> on <GNetworkService> end;
define property-getter protocol :: <C-string> on <GNetworkService> end;
define property-setter domain :: <C-string> on <GNetworkService> end;
define property-getter domain :: <C-string> on <GNetworkService> end;
define property-setter scheme :: <C-string> on <GNetworkAddress> end;
define property-getter scheme :: <C-string> on <GNetworkAddress> end;
define property-setter port :: <C-unsigned-int> on <GNetworkAddress> end;
define property-getter port :: <C-unsigned-int> on <GNetworkAddress> end;
define property-setter hostname :: <C-string> on <GNetworkAddress> end;
define property-getter hostname :: <C-string> on <GNetworkAddress> end;
define property-setter username :: <C-string> on <GMountOperation> end;
define property-getter username :: <C-string> on <GMountOperation> end;
define property-setter password-save :: <GPasswordSave> on <GMountOperation> end;
define property-getter password-save :: <GPasswordSave> on <GMountOperation> end;
define property-setter password :: <C-string> on <GMountOperation> end;
define property-getter password :: <C-string> on <GMountOperation> end;
define property-setter domain :: <C-string> on <GMountOperation> end;
define property-getter domain :: <C-string> on <GMountOperation> end;
define property-setter choice :: <C-signed-int> on <GMountOperation> end;
define property-getter choice :: <C-signed-int> on <GMountOperation> end;
define property-setter anonymous :: <C-boolean> on <GMountOperation> end;
define property-getter anonymous :: <C-boolean> on <GMountOperation> end;
define property-setter size :: <C-unsigned-long> on <GMemoryOutputStream> end;
define property-getter size :: <C-unsigned-long> on <GMemoryOutputStream> end;
define property-getter data-size :: <C-unsigned-long> on <GMemoryOutputStream> end;
define property-setter data :: <C-void*> on <GMemoryOutputStream> end;
define property-getter data :: <C-void*> on <GMemoryOutputStream> end;
define property-setter scope-id :: <C-unsigned-int> on <GInetSocketAddress> end;
define property-getter scope-id :: <C-unsigned-int> on <GInetSocketAddress> end;
define property-setter port :: <C-unsigned-int> on <GInetSocketAddress> end;
define property-getter port :: <C-unsigned-int> on <GInetSocketAddress> end;
define property-setter flowinfo :: <C-unsigned-int> on <GInetSocketAddress> end;
define property-getter flowinfo :: <C-unsigned-int> on <GInetSocketAddress> end;
define property-setter address :: <GInetAddress> on <GInetSocketAddress> end;
define property-getter address :: <GInetAddress> on <GInetSocketAddress> end;
define property-setter length :: <C-unsigned-int> on <GInetAddressMask> end;
define property-getter length :: <C-unsigned-int> on <GInetAddressMask> end;
define property-getter family :: <GSocketFamily> on <GInetAddressMask> end;
define property-setter address :: <GInetAddress> on <GInetAddressMask> end;
define property-getter address :: <GInetAddress> on <GInetAddressMask> end;
define property-getter is-site-local :: <C-boolean> on <GInetAddress> end;
define property-getter is-multicast :: <C-boolean> on <GInetAddress> end;
define property-getter is-mc-site-local :: <C-boolean> on <GInetAddress> end;
define property-getter is-mc-org-local :: <C-boolean> on <GInetAddress> end;
define property-getter is-mc-node-local :: <C-boolean> on <GInetAddress> end;
define property-getter is-mc-link-local :: <C-boolean> on <GInetAddress> end;
define property-getter is-mc-global :: <C-boolean> on <GInetAddress> end;
define property-getter is-loopback :: <C-boolean> on <GInetAddress> end;
define property-getter is-link-local :: <C-boolean> on <GInetAddress> end;
define property-getter is-any :: <C-boolean> on <GInetAddress> end;
define property-setter family :: <GSocketFamily> on <GInetAddress> end;
define property-getter family :: <GSocketFamily> on <GInetAddress> end;
define property-setter bytes :: <C-void*> on <GInetAddress> end;
define property-getter bytes :: <C-void*> on <GInetAddress> end;
define property-getter output-stream :: <GOutputStream> on <GIOStream> end;
define property-getter input-stream :: <GInputStream> on <GIOStream> end;
define property-getter closed :: <C-boolean> on <GIOStream> end;
define property-setter close-base-stream :: <C-boolean> on <GFilterOutputStream> end;
define property-getter close-base-stream :: <C-boolean> on <GFilterOutputStream> end;
define property-setter base-stream :: <GOutputStream> on <GFilterOutputStream> end;
define property-getter base-stream :: <GOutputStream> on <GFilterOutputStream> end;
define property-setter close-base-stream :: <C-boolean> on <GFilterInputStream> end;
define property-getter close-base-stream :: <C-boolean> on <GFilterInputStream> end;
define property-setter base-stream :: <GInputStream> on <GFilterInputStream> end;
define property-getter base-stream :: <GInputStream> on <GFilterInputStream> end;
define property-setter rate-limit :: <C-signed-int> on <GFileMonitor> end;
define property-getter rate-limit :: <C-signed-int> on <GFileMonitor> end;
define property-getter cancelled :: <C-boolean> on <GFileMonitor> end;
define property-setter file :: <GFile> on <GFileIcon> end;
define property-getter file :: <GFile> on <GFileIcon> end;
define property-setter container :: <GFile> on <GFileEnumerator> end;
define property-setter gicon :: <GIcon> on <GEmblemedIcon> end;
define property-getter gicon :: <GIcon> on <GEmblemedIcon> end;
define property-setter origin :: <GEmblemOrigin> on <GEmblem> end;
define property-getter origin :: <GEmblemOrigin> on <GEmblem> end;
define property-setter icon :: <GObject> on <GEmblem> end;
define property-getter icon :: <GObject> on <GEmblem> end;
define property-setter filename :: <C-string> on <GDesktopAppInfo> end;
define property-getter filename :: <C-string> on <GDesktopAppInfo> end;
define property-setter byte-order :: <GDataStreamByteOrder> on <GDataOutputStream> end;
define property-getter byte-order :: <GDataStreamByteOrder> on <GDataOutputStream> end;
define property-setter newline-type :: <GDataStreamNewlineType> on <GDataInputStream> end;
define property-getter newline-type :: <GDataStreamNewlineType> on <GDataInputStream> end;
define property-setter byte-order :: <GDataStreamByteOrder> on <GDataInputStream> end;
define property-getter byte-order :: <GDataStreamByteOrder> on <GDataInputStream> end;
define property-setter guid :: <C-string> on <GDBusServer> end;
define property-getter guid :: <C-string> on <GDBusServer> end;
define property-setter flags :: <GDBusServerFlags> on <GDBusServer> end;
define property-getter flags :: <GDBusServerFlags> on <GDBusServer> end;
define property-getter client-address :: <C-string> on <GDBusServer> end;
define property-setter authentication-observer :: <GDBusAuthObserver> on <GDBusServer> end;
define property-getter authentication-observer :: <GDBusAuthObserver> on <GDBusServer> end;
define property-setter address :: <C-string> on <GDBusServer> end;
define property-getter address :: <C-string> on <GDBusServer> end;
define property-getter active :: <C-boolean> on <GDBusServer> end;
define property-setter g-object-path :: <C-string> on <GDBusProxy> end;
define property-getter g-object-path :: <C-string> on <GDBusProxy> end;
define property-getter g-name-owner :: <C-string> on <GDBusProxy> end;
define property-setter g-name :: <C-string> on <GDBusProxy> end;
define property-getter g-name :: <C-string> on <GDBusProxy> end;
define property-setter g-interface-name :: <C-string> on <GDBusProxy> end;
define property-getter g-interface-name :: <C-string> on <GDBusProxy> end;
define property-setter g-interface-info :: <GDBusInterfaceInfo> on <GDBusProxy> end;
define property-getter g-interface-info :: <GDBusInterfaceInfo> on <GDBusProxy> end;
define property-setter g-flags :: <GDBusProxyFlags> on <GDBusProxy> end;
define property-getter g-flags :: <GDBusProxyFlags> on <GDBusProxy> end;
define property-setter g-default-timeout :: <C-signed-int> on <GDBusProxy> end;
define property-getter g-default-timeout :: <C-signed-int> on <GDBusProxy> end;
define property-setter g-connection :: <GDBusConnection> on <GDBusProxy> end;
define property-getter g-connection :: <GDBusConnection> on <GDBusProxy> end;
define property-setter g-bus-type :: <GBusType> on <GDBusProxy> end;
define property-setter g-object-path :: <C-string> on <GDBusObjectSkeleton> end;
define property-getter g-object-path :: <C-string> on <GDBusObjectSkeleton> end;
define property-setter g-object-path :: <C-string> on <GDBusObjectProxy> end;
define property-getter g-object-path :: <C-string> on <GDBusObjectProxy> end;
define property-setter g-connection :: <GDBusConnection> on <GDBusObjectProxy> end;
define property-getter g-connection :: <GDBusConnection> on <GDBusObjectProxy> end;
define property-setter object-path :: <C-string> on <GDBusObjectManagerServer> end;
define property-getter object-path :: <C-string> on <GDBusObjectManagerServer> end;
define property-setter connection :: <GDBusConnection> on <GDBusObjectManagerServer> end;
define property-getter connection :: <GDBusConnection> on <GDBusObjectManagerServer> end;
define property-setter object-path :: <C-string> on <GDBusObjectManagerClient> end;
define property-getter object-path :: <C-string> on <GDBusObjectManagerClient> end;
define property-getter name-owner :: <C-string> on <GDBusObjectManagerClient> end;
define property-setter name :: <C-string> on <GDBusObjectManagerClient> end;
define property-getter name :: <C-string> on <GDBusObjectManagerClient> end;
define property-setter get-proxy-type-user-data :: <C-void*> on <GDBusObjectManagerClient> end;
define property-getter get-proxy-type-user-data :: <C-void*> on <GDBusObjectManagerClient> end;
define property-setter get-proxy-type-func :: <C-void*> on <GDBusObjectManagerClient> end;
define property-getter get-proxy-type-func :: <C-void*> on <GDBusObjectManagerClient> end;
define property-setter get-proxy-type-destroy-notify :: <C-void*> on <GDBusObjectManagerClient> end;
define property-getter get-proxy-type-destroy-notify :: <C-void*> on <GDBusObjectManagerClient> end;
define property-setter flags :: <GDBusObjectManagerClientFlags> on <GDBusObjectManagerClient> end;
define property-getter flags :: <GDBusObjectManagerClientFlags> on <GDBusObjectManagerClient> end;
define property-setter connection :: <GDBusConnection> on <GDBusObjectManagerClient> end;
define property-getter connection :: <GDBusConnection> on <GDBusObjectManagerClient> end;
define property-setter bus-type :: <GBusType> on <GDBusObjectManagerClient> end;
define property-getter locked :: <C-boolean> on <GDBusMessage> end;
define property-setter g-flags :: <GDBusInterfaceSkeletonFlags> on <GDBusInterfaceSkeleton> end;
define property-getter g-flags :: <GDBusInterfaceSkeletonFlags> on <GDBusInterfaceSkeleton> end;
define property-getter unique-name :: <C-string> on <GDBusConnection> end;
define property-setter stream :: <GIOStream> on <GDBusConnection> end;
define property-getter stream :: <GIOStream> on <GDBusConnection> end;
define property-setter guid :: <C-string> on <GDBusConnection> end;
define property-getter guid :: <C-string> on <GDBusConnection> end;
define property-setter flags :: <GDBusConnectionFlags> on <GDBusConnection> end;
define property-setter exit-on-close :: <C-boolean> on <GDBusConnection> end;
define property-getter exit-on-close :: <C-boolean> on <GDBusConnection> end;
define property-getter closed :: <C-boolean> on <GDBusConnection> end;
define property-getter capabilities :: <GDBusCapabilityFlags> on <GDBusConnection> end;
define property-setter authentication-observer :: <GDBusAuthObserver> on <GDBusConnection> end;
define property-setter address :: <C-string> on <GDBusConnection> end;
define property-setter converter :: <GConverter> on <GConverterOutputStream> end;
define property-getter converter :: <GConverter> on <GConverterOutputStream> end;
define property-setter converter :: <GConverter> on <GConverterInputStream> end;
define property-getter converter :: <GConverter> on <GConverterInputStream> end;
define property-setter use-fallback :: <C-boolean> on <GCharsetConverter> end;
define property-getter use-fallback :: <C-boolean> on <GCharsetConverter> end;
define property-setter to-charset :: <C-string> on <GCharsetConverter> end;
define property-getter to-charset :: <C-string> on <GCharsetConverter> end;
define property-setter from-charset :: <C-string> on <GCharsetConverter> end;
define property-getter from-charset :: <C-string> on <GCharsetConverter> end;
define property-setter buffer-size :: <C-unsigned-int> on <GBufferedOutputStream> end;
define property-getter buffer-size :: <C-unsigned-int> on <GBufferedOutputStream> end;
define property-setter auto-grow :: <C-boolean> on <GBufferedOutputStream> end;
define property-getter auto-grow :: <C-boolean> on <GBufferedOutputStream> end;
define property-setter buffer-size :: <C-unsigned-int> on <GBufferedInputStream> end;
define property-getter buffer-size :: <C-unsigned-int> on <GBufferedInputStream> end;
define property-setter platform-data :: <GVariant> on <GApplicationCommandLine> end;
define property-getter is-remote :: <C-boolean> on <GApplicationCommandLine> end;
define property-setter arguments :: <GVariant> on <GApplicationCommandLine> end;
define property-getter is-remote :: <C-boolean> on <GApplication> end;
define property-getter is-registered :: <C-boolean> on <GApplication> end;
define property-setter inactivity-timeout :: <C-unsigned-int> on <GApplication> end;
define property-getter inactivity-timeout :: <C-unsigned-int> on <GApplication> end;
define property-setter flags :: <GApplicationFlags> on <GApplication> end;
define property-getter flags :: <GApplicationFlags> on <GApplication> end;
define property-setter application-id :: <C-string> on <GApplication> end;
define property-getter application-id :: <C-string> on <GApplication> end;
define property-setter action-group :: <GActionGroup> on <GApplication> end;
