.class final Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Lcom/android/server/connectivity/MultipathPolicyTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1200(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method
