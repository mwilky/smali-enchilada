.class public interface abstract Landroid/media/IAudioServerStateDispatcher;
.super Ljava/lang/Object;
.source "IAudioServerStateDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioServerStateDispatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchAudioServerStateChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
