.class public interface abstract Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;
.super Ljava/lang/Object;
.source "IGetAllProfilesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(I[Landroid/service/euicc/EuiccProfileInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
