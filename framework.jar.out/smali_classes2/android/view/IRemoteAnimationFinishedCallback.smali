.class public interface abstract Landroid/view/IRemoteAnimationFinishedCallback;
.super Ljava/lang/Object;
.source "IRemoteAnimationFinishedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRemoteAnimationFinishedCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAnimationFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
