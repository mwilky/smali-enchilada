.class public interface abstract Landroid/app/slice/ISliceListener;
.super Ljava/lang/Object;
.source "ISliceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/ISliceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSliceUpdated(Landroid/app/slice/Slice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
