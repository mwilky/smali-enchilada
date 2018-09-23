.class public Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
.super Ljava/lang/Object;
.source "AppStateSmsPremBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateSmsPremBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsState"
.end annotation


# instance fields
.field public smsState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isGranted()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
