.class Lcom/oneplus/settings/quickpay/QuickPaySettings$2;
.super Ljava/lang/Object;
.source "QuickPaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quickpay/QuickPaySettings;->showConfirmChangeHomeAction(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
