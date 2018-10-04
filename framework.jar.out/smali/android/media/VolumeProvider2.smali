.class public abstract Landroid/media/VolumeProvider2;
.super Ljava/lang/Object;
.source "VolumeProvider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeProvider2$ControlType;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private final mProvider:Landroid/media/update/VolumeProvider2Provider;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/media/update/StaticProvider;->createVolumeProvider2(Landroid/media/VolumeProvider2;III)Landroid/media/update/VolumeProvider2Provider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/VolumeProvider2;->mProvider:Landroid/media/update/VolumeProvider2Provider;

    return-void
.end method


# virtual methods
.method public final getControlType()I
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeProvider2;->mProvider:Landroid/media/update/VolumeProvider2Provider;

    invoke-interface {v0}, Landroid/media/update/VolumeProvider2Provider;->getControlType_impl()I

    move-result v0

    return v0
.end method

.method public final getCurrentVolume()I
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeProvider2;->mProvider:Landroid/media/update/VolumeProvider2Provider;

    invoke-interface {v0}, Landroid/media/update/VolumeProvider2Provider;->getCurrentVolume_impl()I

    move-result v0

    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeProvider2;->mProvider:Landroid/media/update/VolumeProvider2Provider;

    invoke-interface {v0}, Landroid/media/update/VolumeProvider2Provider;->getMaxVolume_impl()I

    move-result v0

    return v0
.end method

.method public getProvider()Landroid/media/update/VolumeProvider2Provider;
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeProvider2;->mProvider:Landroid/media/update/VolumeProvider2Provider;

    return-object v0
.end method

.method public onAdjustVolume(I)V
    .locals 0

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 0

    return-void
.end method

.method public final setCurrentVolume(I)V
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeProvider2;->mProvider:Landroid/media/update/VolumeProvider2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VolumeProvider2Provider;->setCurrentVolume_impl(I)V

    return-void
.end method
