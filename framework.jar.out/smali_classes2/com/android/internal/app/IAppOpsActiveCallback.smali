.class public interface abstract Lcom/android/internal/app/IAppOpsActiveCallback;
.super Ljava/lang/Object;
.source "IAppOpsActiveCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract opActiveChanged(IILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
