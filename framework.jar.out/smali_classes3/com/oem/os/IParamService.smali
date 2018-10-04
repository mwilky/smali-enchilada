.class public interface abstract Lcom/oem/os/IParamService;
.super Ljava/lang/Object;
.source "IParamService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oem/os/IParamService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getParamIntSYNC(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
