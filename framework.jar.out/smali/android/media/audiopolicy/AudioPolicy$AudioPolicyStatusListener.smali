.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyStatusListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMixStateUpdate(Landroid/media/audiopolicy/AudioMix;)V
    .locals 0

    return-void
.end method

.method public onStatusChange()V
    .locals 0

    return-void
.end method
