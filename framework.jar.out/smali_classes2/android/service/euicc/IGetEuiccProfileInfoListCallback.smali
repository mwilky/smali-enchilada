.class public interface abstract Landroid/service/euicc/IGetEuiccProfileInfoListCallback;
.super Ljava/lang/Object;
.source "IGetEuiccProfileInfoListCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetEuiccProfileInfoListCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/service/euicc/GetEuiccProfileInfoListResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
