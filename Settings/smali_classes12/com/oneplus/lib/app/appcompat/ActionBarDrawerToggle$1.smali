.class Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcom/oneplus/lib/widget/actionbar/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;

    iget-boolean v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->toggle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle$1;->this$0:Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
