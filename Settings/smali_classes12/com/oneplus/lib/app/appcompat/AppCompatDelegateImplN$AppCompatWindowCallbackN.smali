.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackN"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-super {p0, p1, v1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method
