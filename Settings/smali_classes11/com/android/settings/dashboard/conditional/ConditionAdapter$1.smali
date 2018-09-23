.class Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;
.super Ljava/lang/Object;
.source "ConditionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/ConditionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->access$100(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-static {v2}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->access$000(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v3

    const/16 v4, 0x177

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->onPrimaryClick()V

    return-void
.end method
