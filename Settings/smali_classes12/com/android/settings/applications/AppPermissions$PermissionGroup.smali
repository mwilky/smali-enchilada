.class final Lcom/android/settings/applications/AppPermissions$PermissionGroup;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionGroup"
.end annotation


# instance fields
.field private mHasRuntimePermissions:Z

.field private final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppPermissions$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/AppPermissions$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppPermissions$PermissionGroup;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/AppPermissions$PermissionGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mHasRuntimePermissions:Z

    return v0
.end method


# virtual methods
.method addPermission(Lcom/android/settings/applications/AppPermissions$Permission;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/applications/AppPermissions$Permission;->access$200(Lcom/android/settings/applications/AppPermissions$Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mHasRuntimePermissions:Z

    :cond_0
    return-void
.end method

.method public areRuntimePermissionsGranted()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/AppPermissions$Permission;

    invoke-static {v3}, Lcom/android/settings/applications/AppPermissions$Permission;->access$200(Lcom/android/settings/applications/AppPermissions$Permission;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/settings/applications/AppPermissions$Permission;->access$300(Lcom/android/settings/applications/AppPermissions$Permission;)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/AppPermissions$Permission;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasRuntimePermissions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppPermissions$PermissionGroup;->mHasRuntimePermissions:Z

    return v0
.end method
