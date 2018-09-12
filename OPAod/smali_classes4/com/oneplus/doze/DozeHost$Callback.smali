.class public interface abstract Lcom/oneplus/doze/DozeHost$Callback;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAlwaysDisplayOn()V
.end method

.method public abstract onEnterDisplayPeriod(Z)V
.end method

.method public abstract onNewNotifications()V
.end method

.method public abstract onPowerSaveChanged(Z)V
.end method

.method public abstract onThreeKeyChanged()V
.end method

.method public abstract onTriggerDetectLight()V
.end method
