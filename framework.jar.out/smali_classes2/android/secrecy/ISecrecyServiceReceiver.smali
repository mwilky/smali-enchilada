.class public interface abstract Landroid/secrecy/ISecrecyServiceReceiver;
.super Ljava/lang/Object;
.source "ISecrecyServiceReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/ISecrecyServiceReceiver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSecrecyStateChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
