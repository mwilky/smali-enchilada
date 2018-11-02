.class Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "OPShortcutListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field appIconIv:Landroid/widget/ImageView;

.field appNameTv:Landroid/widget/TextView;

.field bottomLine:Landroid/view/View;

.field checkBox:Landroid/widget/CheckBox;

.field groupDivider:Landroid/view/View;

.field parent:Landroid/widget/RelativeLayout;

.field smallAppIconIv:Landroid/widget/ImageView;

.field summaryTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->this$0:Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
