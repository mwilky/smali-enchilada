.class Lcom/android/server/InputMethodManagerService$8;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    array-length v1, v1

    if-le v1, p2, :cond_4

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v1

    array-length v1, v1

    if-gt v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v2, v2, p2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v3, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$8;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    if-eqz v1, :cond_3

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, -0x1

    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$8;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
