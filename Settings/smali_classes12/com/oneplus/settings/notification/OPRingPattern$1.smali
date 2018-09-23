.class Lcom/oneplus/settings/notification/OPRingPattern$1;
.super Ljava/lang/Object;
.source "OPRingPattern.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPRingPattern;->initVibrateWhenRinging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPRingPattern;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPRingPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern$1;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingPattern$1;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPRingPattern;->access$000(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method
