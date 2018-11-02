.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;
.source "AppCompatDelegateImplN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    return-void
.end method


# virtual methods
.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN$AppCompatWindowCallbackN;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplN;Landroid/view/Window$Callback;)V

    return-object v0
.end method
