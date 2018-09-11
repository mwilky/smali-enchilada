.class Lcom/android/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SwitchBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SwitchBar;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/SwitchBar;

    .line 136
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    iput-object p2, p0, Lcom/android/settings/widget/SwitchBar$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$000(Lcom/android/settings/widget/SwitchBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->access$300(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-static {v1}, Lcom/android/settings/widget/SwitchBar;->access$100(Lcom/android/settings/widget/SwitchBar;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    .line 141
    invoke-static {v3}, Lcom/android/settings/widget/SwitchBar;->access$200(Lcom/android/settings/widget/SwitchBar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/switch_bar|restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    .line 143
    invoke-static {v1}, Lcom/android/settings/widget/SwitchBar;->access$400(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 145
    :cond_0
    return-void
.end method
