.class public interface abstract Lcom/oneplus/oiface/IOIfaceNotifier;
.super Ljava/lang/Object;
.source "IOIfaceNotifier.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/oiface/IOIfaceNotifier$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSystemNotify(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
