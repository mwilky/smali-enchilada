.class public interface abstract Lcom/oneplus/doze/DozeHost;
.super Ljava/lang/Object;
.source "DozeHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeHost$PulseCallback;,
        Lcom/oneplus/doze/DozeHost$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
.end method

.method public abstract isNotificationLightOn()Z
.end method

.method public abstract isPowerSaveActive()Z
.end method

.method public abstract isPulsingBlocked()Z
.end method

.method public abstract onWakingUp(Ljava/lang/String;)V
.end method

.method public abstract pulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
.end method

.method public abstract removeCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
.end method

.method public abstract startDozing(Ljava/lang/Runnable;)V
.end method

.method public abstract stopDozing()V
.end method
