.class public final Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapSupportMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenu;)Landroid/view/Menu;
    .locals 0

    return-object p1
.end method

.method public static wrapSupportMenuItem(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 0

    return-object p1
.end method

.method public static wrapSupportSubMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 0

    return-object p1
.end method
