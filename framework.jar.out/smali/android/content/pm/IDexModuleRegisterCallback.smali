.class public interface abstract Landroid/content/pm/IDexModuleRegisterCallback;
.super Ljava/lang/Object;
.source "IDexModuleRegisterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IDexModuleRegisterCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
