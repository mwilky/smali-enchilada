.class public Lcom/android/server/slice/SliceProviderPermissions;
.super Ljava/lang/Object;
.source "SliceProviderPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    }
.end annotation


# static fields
.field private static final ATTR_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkg"

.field private static final NAMESPACE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SliceProviderPermissions"

.field private static final TAG_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final TAG_PKG:Ljava/lang/String; = "pkg"

.field static final TAG_PROVIDER:Ljava/lang/String; = "provider"


# instance fields
.field private final mAuths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field private final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    iput-object p2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    return-object v0
.end method

.method public static createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "provider"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    sget-object v3, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v4, "pkg"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/slice/SliceProviderPermissions;

    invoke-direct {v3, v2, p1}, Lcom/android/server/slice/SliceProviderPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v1, :cond_1

    const-string v4, "authority"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v4, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    sget-object v5, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v6, "authority"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/DirtyTracker;)V

    invoke-virtual {v4, p0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->readFrom(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, v3, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "SliceProviderPermissions"

    const-string v6, "Couldn\'t read PkgUser"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0
.end method

.method public static getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "provider_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAuthorities()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-static {v0}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOrCreateAuthority(Ljava/lang/String;)Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    invoke-direct {v1, p1, p0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/DirtyTracker;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/slice/SliceProviderPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .locals 1

    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method public onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v0, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    return-void
.end method

.method public declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "provider"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "pkg"

    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    iget-object v4, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    invoke-static {v4}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->access$000(Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    invoke-virtual {v2, p1}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-object v2, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string v3, "authority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/slice/SliceProviderPermissions;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "provider"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
