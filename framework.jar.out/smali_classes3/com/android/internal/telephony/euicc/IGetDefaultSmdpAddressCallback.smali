.class public interface abstract Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;
.super Ljava/lang/Object;
.source "IGetDefaultSmdpAddressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
