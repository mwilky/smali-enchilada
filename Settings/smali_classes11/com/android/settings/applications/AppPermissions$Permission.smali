.class final Lcom/android/settings/applications/AppPermissions$Permission;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Permission"
.end annotation


# instance fields
.field private granted:Z

.field private final runtime:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/applications/AppPermissions$Permission;->runtime:Z

    iput-boolean p2, p0, Lcom/android/settings/applications/AppPermissions$Permission;->granted:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/applications/AppPermissions$Permission;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppPermissions$Permission;->runtime:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/AppPermissions$Permission;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppPermissions$Permission;->granted:Z

    return v0
.end method
