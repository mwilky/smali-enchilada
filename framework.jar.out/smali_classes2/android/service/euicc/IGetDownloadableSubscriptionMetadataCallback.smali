.class public interface abstract Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
.super Ljava/lang/Object;
.source "IGetDownloadableSubscriptionMetadataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
