.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x101030b

    aput v3, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setActionBarDescription(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    return-void
.end method
