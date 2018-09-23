.class Lcom/android/server/policy/OemPhoneWindowManager$10$3;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager$10;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$3;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$10$3;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$10;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$10;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method
