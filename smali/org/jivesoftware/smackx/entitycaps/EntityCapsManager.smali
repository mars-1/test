.class public Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;
.super Ljava/lang/Object;
.source "EntityCapsManager.java"


# static fields
.field public static final HASH_METHOD:Ljava/lang/String; = "sha-1"

.field public static final HASH_METHOD_CAPS:Ljava/lang/String; = "SHA-1"

.field private static caps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/packet/DiscoverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static entityNode:Ljava/lang/String;

.field private static persistentCache:Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;


# instance fields
.field private capsVerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentCapsVersion:Ljava/lang/String;

.field private sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

.field private sendPresence:Z

.field private userCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-string/jumbo v0, "http://www.igniterealtime.org/projects/smack/"

    sput-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityNode:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 67
    sput-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    .line 87
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    const-string/jumbo v1, "c"

    .line 88
    const-string/jumbo v2, "http://jabber.org/protocol/caps"

    new-instance v3, Lorg/jivesoftware/smackx/provider/CapsExtensionProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/CapsExtensionProvider;-><init>()V

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/ServiceDiscoveryManager;)V
    .locals 1
    .parameter "sdm"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->userCaps:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sendPresence:Z

    .line 108
    const-string/jumbo v0, "http://jabber.org/protocol/caps"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 111
    return-void
.end method

.method public static addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 1
    .parameter "node"
    .parameter "info"

    .prologue
    .line 98
    invoke-static {p1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->cleanupDicsoverInfo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 100
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;

    invoke-interface {v0, p0, p1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;->addDiscoverInfoByNodePersistent(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 104
    :cond_0
    return-void
.end method

.method private static capsToHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "capsString"

    .prologue
    .line 237
    :try_start_0
    const-string/jumbo v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 238
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 239
    .local v0, digest:[B
    invoke-static {v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 242
    .end local v0           #digest:[B
    .end local v1           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, nsae:Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static cleanupDicsoverInfo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setFrom(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setPacketID(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private static formFieldValuesToCaps(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string/jumbo v2, ""

    .line 248
    .local v2, s:Ljava/lang/String;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 249
    .local v1, fvs:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    return-object v2

    .line 250
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, fv:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getDiscoverInfoByNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 1
    .parameter "node"

    .prologue
    .line 195
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->caps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    return-object v0
.end method

.method private notifyCapsVerListeners()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    return-void

    .line 224
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;

    .line 225
    .local v0, listener:Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;->capsVerUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPersistentCache(Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;)V
    .locals 2
    .parameter "cache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Entity Caps Persistent Cache was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    sput-object p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;

    .line 335
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;

    invoke-interface {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;->replay()V

    .line 336
    return-void
.end method

.method private setSendPresence()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sendPresence:Z

    .line 357
    return-void
.end method


# virtual methods
.method public addCapsVerListener(Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 213
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;->capsVerUpdated(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .parameter "connection"

    .prologue
    .line 206
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    .line 207
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v4, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 208
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string/jumbo v4, "c"

    const-string/jumbo v5, "http://jabber.org/protocol/caps"

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 209
    .local v0, f:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v1, Lorg/jivesoftware/smackx/entitycaps/CapsPacketListener;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/entitycaps/CapsPacketListener;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 210
    return-void
.end method

.method public addUserCapsNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "user"
    .parameter "node"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method public calculateEntityCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 10
    .parameter "discoverInfo"
    .parameter "identityType"
    .parameter "identityName"
    .parameter "extendedInfo"

    .prologue
    .line 262
    const-string/jumbo v6, ""

    .line 266
    .local v6, s:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "client/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 270
    .local v1, features:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getFeatures()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 273
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 277
    if-eqz p4, :cond_1

    .line 278
    monitor-enter p4

    .line 279
    :try_start_0
    new-instance v2, Ljava/util/TreeSet;

    .line 280
    new-instance v7, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$1;

    invoke-direct {v7, p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager$1;-><init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V

    .line 279
    invoke-direct {v2, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 286
    .local v2, fs:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    const/4 v3, 0x0

    .line 288
    .local v3, ft:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {p4}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 299
    if-eqz v3, :cond_0

    .line 300
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v8

    invoke-static {v8}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    :cond_0
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 278
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local v2           #fs:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .end local v3           #ft:Lorg/jivesoftware/smackx/FormField;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_1
    invoke-static {v6}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->capsToHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->setCurrentCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;)V

    .line 312
    return-void

    .line 271
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Feature;->getVar()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, f:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 289
    .end local v0           #f:Ljava/lang/String;
    .restart local v2       #fs:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .restart local v3       #ft:Lorg/jivesoftware/smackx/FormField;
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_4
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 290
    .local v0, f:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "FORM_TYPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 291
    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 278
    .end local v0           #f:Lorg/jivesoftware/smackx/FormField;
    .end local v2           #fs:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .end local v3           #ft:Lorg/jivesoftware/smackx/FormField;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :catchall_0
    move-exception v7

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 294
    .restart local v0       #f:Lorg/jivesoftware/smackx/FormField;
    .restart local v2       #fs:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lorg/jivesoftware/smackx/FormField;>;"
    .restart local v3       #ft:Lorg/jivesoftware/smackx/FormField;
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_5
    move-object v3, v0

    goto :goto_2

    .line 304
    .end local v0           #f:Lorg/jivesoftware/smackx/FormField;
    :cond_6
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 305
    .restart local v0       #f:Lorg/jivesoftware/smackx/FormField;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v9

    invoke-static {v9}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto/16 :goto_3
.end method

.method public getCapsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoverInfoByUser(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 2
    .parameter "user"

    .prologue
    .line 154
    iget-object v1, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, capsNode:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getDiscoverInfoByNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityNode:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeVersionByUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "user"

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwnDiscoverInfo()Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 3

    .prologue
    .line 344
    new-instance v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;-><init>()V

    .line 345
    .local v0, di:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getCapsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addDiscoverInfoTo(Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 351
    return-object v0
.end method

.method public isSendPresence()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->sendPresence:Z

    return v0
.end method

.method public removeCapsVerListener(Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->capsVerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public removeUserCapsNode(Ljava/lang/String;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->userCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public setCurrentCapsVersion(Lorg/jivesoftware/smackx/packet/DiscoverInfo;Ljava/lang/String;)V
    .locals 2
    .parameter "discoverInfo"
    .parameter "capsVersion"

    .prologue
    .line 320
    iput-object p2, p0, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->currentCapsVersion:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    .line 322
    invoke-direct {p0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->notifyCapsVerListeners()V

    .line 323
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 185
    sput-object p1, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->entityNode:Ljava/lang/String;

    .line 186
    return-void
.end method
