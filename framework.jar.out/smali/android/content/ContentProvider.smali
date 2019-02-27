.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DBG_ALL:Z

.field private static final DBG_DUMP_STACK:Z

.field private static final SAVE_DBG_MSG:Z = true

.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private final mCallingPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mNoPerms:Z

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mSingleUser:Z

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_ALL:Z

    sput-boolean v0, Landroid/content/ContentProvider;->DBG_ALL:Z

    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    sput-boolean v0, Landroid/content/ContentProvider;->DBG_DUMP_STACK:Z

    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG:Z

    sget-boolean v1, Landroid/content/ContentProvider;->DBG_ALL:Z

    or-int/2addr v0, v1

    sput-boolean v0, Landroid/content/ContentProvider;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Landroid/content/ContentProvider;->DBG_ALL:Z

    return v0
.end method

.method private attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 2

    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    :cond_3
    return-void
.end method

.method private checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1

    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/content/ContentProvider$Transport;

    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;I)I
    .locals 5

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "ContentProvider"

    const-string v4, "Error parsing userId."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, -0x2710

    return v3
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;I)I
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Landroid/content/ContentProviderResult;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v1, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method checkUser(IILandroid/content/Context;)Z
    .locals 2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v12, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_0

    return v13

    :cond_0
    iget-boolean v5, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v5, :cond_8

    invoke-virtual {v0, v11, v12, v10}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {v0, v5, v2, v9}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v6

    if-nez v6, :cond_1

    return v13

    :cond_1
    move-object v3, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v13

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    array-length v15, v7

    move/from16 v16, v6

    move v6, v4

    move-object v4, v3

    move v3, v13

    :goto_1
    if-ge v3, v15, :cond_6

    aget-object v14, v7, v3

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v14, v8}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v18, v4

    invoke-direct {v0, v13, v2, v9}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x0

    return v3

    :cond_4
    const/16 v16, 0x0

    move-object/from16 v17, v13

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v6, v4

    move-object/from16 v4, v17

    goto :goto_2

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v4, v18

    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v18, v4

    move v4, v6

    move-object/from16 v3, v18

    goto :goto_3

    :cond_7
    move/from16 v16, v6

    :goto_3
    if-eqz v16, :cond_8

    const/4 v6, 0x0

    return v6

    :cond_8
    move-object v13, v3

    move v14, v4

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    iget-boolean v3, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v3, :cond_9

    iget v3, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v3, v12}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v1, v15}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object v4, v3

    goto :goto_4

    :cond_9
    move-object v4, v1

    :goto_4
    const/4 v3, 0x1

    new-array v5, v3, [I

    const/16 v3, 0x1c

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ContentProvider"

    invoke-static {v5, v15, v3}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    return v5

    :cond_a
    const/4 v7, 0x1

    move-object v3, v10

    move v5, v11

    move v6, v12

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    return v3

    :cond_b
    const/4 v3, 0x1

    if-ne v14, v3, :cond_c

    return v3

    :cond_c
    const-string v3, "android.permission.MANAGE_DOCUMENTS"

    iget-object v5, v0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-boolean v3, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", or grantUriPermission()"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_d
    const-string v3, " requires the provider be exported, or grantUriPermission()"

    goto :goto_5

    :cond_e
    const-string v3, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    :goto_5
    nop

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v12, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    return v13

    :cond_0
    iget-boolean v3, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v3, :cond_9

    invoke-virtual {v0, v11, v12, v10}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {v0, v3, v8, v9}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    if-nez v4, :cond_1

    return v13

    :cond_1
    move-object v1, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    if-nez v3, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v13

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    array-length v15, v5

    move/from16 v16, v4

    move v4, v2

    move-object v2, v1

    move v1, v13

    :goto_1
    if-ge v1, v15, :cond_6

    aget-object v14, v5, v1

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v14, v6}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v18, v2

    invoke-direct {v0, v13, v8, v9}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x0

    return v1

    :cond_4
    const/16 v16, 0x0

    move-object/from16 v17, v13

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    move-object/from16 v2, v17

    goto :goto_2

    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v2, v18

    :goto_2
    add-int/lit8 v1, v1, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v18, v2

    move v2, v4

    move-object/from16 v1, v18

    goto :goto_3

    :cond_7
    move/from16 v16, v4

    :goto_3
    if-eqz v16, :cond_8

    const/4 v4, 0x0

    return v4

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    move v4, v13

    :goto_4
    move-object v13, v1

    move v14, v2

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v1, 0x1c

    aput v1, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentProvider"

    invoke-static {v2, v15, v1}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    return v2

    :cond_a
    const/4 v5, 0x2

    move-object v1, v10

    move-object v2, v7

    move v3, v11

    move v4, v12

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    const/4 v1, 0x1

    if-ne v14, v1, :cond_c

    return v1

    :cond_c
    iget-boolean v1, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or grantUriPermission()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_d
    const-string v1, " requires the provider be exported, or grantUriPermission()"

    :goto_5
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final matchesOurAuthorities(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v1, :cond_2

    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple items at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_5

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    return-object v5

    :cond_5
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Column _data not found."

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v9, Landroid/content/ContentProvider$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p5

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v1, v9

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "*/*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    move-object p3, v0

    const-string v0, "android:query-arg-sql-sort-order"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "android:query-arg-sql-selection"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final setAppOps(II)V
    .locals 1

    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    :cond_0
    return-void
.end method

.method protected final setAuthorities(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0

    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-void
.end method

.method public shutdown()V
    .locals 2

    const-string v0, "ContentProvider"

    const-string v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v1, :cond_1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to query a ContentProvider in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with a uri belonging to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The authority of the uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not match the one of the contentProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "//+"

    const-string v4, "/"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "ContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalized "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to avoid possible security issues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    return-object p1
.end method
