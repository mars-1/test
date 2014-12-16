.class public Lorg/jivesoftware/smackx/ConfigureProviderManager;
.super Ljava/lang/Object;
.source "ConfigureProviderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureProviderManager()V
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v1

    .line 79
    .local v1, pm:Lorg/jivesoftware/smack/provider/ProviderManager;
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "jabber:iq:private"

    new-instance v4, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataIQProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/PrivateDataManager$PrivateDataIQProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :try_start_0
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "jabber:iq:time"

    const-string/jumbo v4, "org.jivesoftware.smackx.packet.Time"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    const-string/jumbo v2, "x"

    const-string/jumbo v3, "jabber:x:roster"

    new-instance v4, Lorg/jivesoftware/smackx/provider/RosterExchangeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/RosterExchangeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v2, "x"

    const-string/jumbo v3, "jabber:x:event"

    new-instance v4, Lorg/jivesoftware/smackx/provider/MessageEventProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/MessageEventProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string/jumbo v2, "active"

    const-string/jumbo v3, "http://jabber.org/protocol/chatstates"

    new-instance v4, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string/jumbo v2, "composing"

    const-string/jumbo v3, "http://jabber.org/protocol/chatstates"

    new-instance v4, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v2, "paused"

    const-string/jumbo v3, "http://jabber.org/protocol/chatstates"

    new-instance v4, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v2, "inactive"

    const-string/jumbo v3, "http://jabber.org/protocol/chatstates"

    new-instance v4, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v2, "gone"

    const-string/jumbo v3, "http://jabber.org/protocol/chatstates"

    new-instance v4, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string/jumbo v2, "html"

    const-string/jumbo v3, "http://jabber.org/protocol/xhtml-im"

    new-instance v4, Lorg/jivesoftware/smackx/provider/XHTMLExtensionProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/XHTMLExtensionProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string/jumbo v2, "x"

    const-string/jumbo v3, "jabber:x:conference"

    new-instance v4, Lorg/jivesoftware/smackx/GroupChatInvitation$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/GroupChatInvitation$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "http://jabber.org/protocol/disco#items"

    new-instance v4, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "http://jabber.org/protocol/disco#info"

    new-instance v4, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string/jumbo v2, "x"

    const-string/jumbo v3, "jabber:x:data"

    new-instance v4, Lorg/jivesoftware/smackx/provider/DataFormProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/DataFormProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string/jumbo v2, "x"

    const-string/jumbo v3, "http://jabber.org/protocol/muc#user"

    new-instance v4, Lorg/jivesoftware/smackx/provider/MUCUserProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "http://jabber.org/protocol/muc#admin"

    new-instance v4, Lorg/jivesoftware/smackx/provider/MUCAdminProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/MUCAdminProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "http://jabber.org/protocol/muc#owner"

    new-instance v4, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string/jumbo v2, "x"

    const-string/jumbo v3, "jabber:x:delay"

    new-instance v4, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string/jumbo v2, "delay"

    const-string/jumbo v3, "urn:xmpp:delay"

    new-instance v4, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :try_start_1
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "jabber:iq:version"

    const-string/jumbo v4, "org.jivesoftware.smackx.packet.Version"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :goto_1
    const-string/jumbo v2, "vCard"

    const-string/jumbo v3, "vcard-temp"

    new-instance v4, Lorg/jivesoftware/smackx/provider/VCardProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/VCardProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string/jumbo v2, "offline"

    const-string/jumbo v3, "http://jabber.org/protocol/offline"

    new-instance v4, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v2, "offline"

    const-string/jumbo v3, "http://jabber.org/protocol/offline"

    new-instance v4, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "jabber:iq:last"

    new-instance v4, Lorg/jivesoftware/smackx/packet/LastActivity$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/LastActivity$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "jabber:iq:search"

    new-instance v4, Lorg/jivesoftware/smackx/search/UserSearch$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/search/UserSearch$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string/jumbo v2, "sharedgroup"

    const-string/jumbo v3, "http://www.jivesoftware.org/protocol/sharedgroup"

    new-instance v4, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/SharedGroupsInfo$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string/jumbo v2, "addresses"

    const-string/jumbo v3, "http://jabber.org/protocol/address"

    new-instance v4, Lorg/jivesoftware/smackx/provider/MultipleAddressesProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/MultipleAddressesProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string/jumbo v2, "si"

    const-string/jumbo v3, "http://jabber.org/protocol/si"

    new-instance v4, Lorg/jivesoftware/smackx/provider/StreamInitiationProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/StreamInitiationProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "http://jabber.org/protocol/bytestreams"

    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/socks5/provider/BytestreamsProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/provider/BytestreamsProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string/jumbo v2, "open"

    const-string/jumbo v3, "http://jabber.org/protocol/ibb"

    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/OpenIQProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/OpenIQProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string/jumbo v2, "data"

    const-string/jumbo v3, "http://jabber.org/protocol/ibb"

    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string/jumbo v2, "close"

    const-string/jumbo v3, "http://jabber.org/protocol/ibb"

    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/CloseIQProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/CloseIQProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string/jumbo v2, "data"

    const-string/jumbo v3, "http://jabber.org/protocol/ibb"

    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/bytestreams/ibb/provider/DataPacketProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string/jumbo v2, "query"

    const-string/jumbo v3, "jabber:iq:privacy"

    new-instance v4, Lorg/jivesoftware/smack/provider/PrivacyProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smack/provider/PrivacyProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string/jumbo v2, "headers"

    const-string/jumbo v3, "http://jabber.org/protocol/shim"

    new-instance v4, Lorg/jivesoftware/smackx/provider/HeadersProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/HeadersProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string/jumbo v2, "header"

    const-string/jumbo v3, "http://jabber.org/protocol/shim"

    new-instance v4, Lorg/jivesoftware/smackx/provider/HeaderProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/provider/HeaderProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string/jumbo v2, "pubsub"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v2, "create"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string/jumbo v2, "items"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string/jumbo v2, "item"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string/jumbo v2, "subscriptions"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionsProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionsProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string/jumbo v2, "subscription"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/SubscriptionProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string/jumbo v2, "affiliations"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationsProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationsProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string/jumbo v2, "affiliation"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/AffiliationProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string/jumbo v2, "options"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string/jumbo v2, "pubsub"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#owner"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/PubSubProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string/jumbo v2, "configure"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#owner"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string/jumbo v2, "default"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#owner"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string/jumbo v2, "event"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/EventProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/EventProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string/jumbo v2, "configuration"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/ConfigEventProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/ConfigEventProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string/jumbo v2, "delete"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string/jumbo v2, "options"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/FormNodeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string/jumbo v2, "items"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/ItemsProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string/jumbo v2, "item"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/ItemProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string/jumbo v2, "retract"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/RetractEventProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/RetractEventProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string/jumbo v2, "purge"

    const-string/jumbo v3, "http://jabber.org/protocol/pubsub#event"

    new-instance v4, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/pubsub/provider/SimpleNodeProvider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string/jumbo v2, "nick"

    const-string/jumbo v3, "http://jabber.org/protocol/nick"

    new-instance v4, Lorg/jivesoftware/smackx/packet/Nick$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/Nick$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string/jumbo v2, "attention"

    const-string/jumbo v3, "urn:xmpp:attention:0"

    new-instance v4, Lorg/jivesoftware/smackx/packet/AttentionExtension$Provider;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/packet/AttentionExtension$Provider;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Can\'t load class for org.jivesoftware.smackx.packet.Time"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 122
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Can\'t load class for org.jivesoftware.smackx.packet.Version"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
