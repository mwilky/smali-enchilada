.class public Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;
.super Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method

.method public setTabListener(Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mCallback:Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->this$0:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->updateTab(I)V

    :cond_0
    return-object p0
.end method
