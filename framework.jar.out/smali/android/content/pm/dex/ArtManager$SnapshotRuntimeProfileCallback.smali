.class public abstract Landroid/content/pm/dex/ArtManager$SnapshotRuntimeProfileCallback;
.super Ljava/lang/Object;
.source "ArtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/ArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SnapshotRuntimeProfileCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onSuccess(Landroid/os/ParcelFileDescriptor;)V
.end method
