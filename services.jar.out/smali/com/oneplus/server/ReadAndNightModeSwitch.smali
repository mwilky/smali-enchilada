.class public Lcom/oneplus/server/ReadAndNightModeSwitch;
.super Ljava/lang/Object;
.source "ReadAndNightModeSwitch.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadAndNightModeSwitch"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/server/ReadAndNightModeSwitch;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v0}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v0}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    const/4 v0, 0x0

    return v0
.end method
