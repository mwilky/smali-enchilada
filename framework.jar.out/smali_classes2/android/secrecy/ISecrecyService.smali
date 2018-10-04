.class public interface abstract Landroid/secrecy/ISecrecyService;
.super Ljava/lang/Object;
.source "ISecrecyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/ISecrecyService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSecrecyKey([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSecrecyState(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSecrecySupport()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSecrecyServiceReceiver(Landroid/secrecy/ISecrecyServiceReceiver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
