.class Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask$1;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask$1;->this$1:Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/oneplus/settings/ui/OPProgressDialog;)V
    .locals 2

    const-string v0, "UpdateRuleTask"

    const-string v1, "UpdateRuleTask onTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
