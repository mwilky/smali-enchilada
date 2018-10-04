.class public Landroid/app/assist/AssistStructure;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;,
        Landroid/app/assist/AssistStructure$HtmlInfoNode;,
        Landroid/app/assist/AssistStructure$ViewNodeBuilder;,
        Landroid/app/assist/AssistStructure$AutofillOverlay;,
        Landroid/app/assist/AssistStructure$ViewNode;,
        Landroid/app/assist/AssistStructure$WindowNode;,
        Landroid/app/assist/AssistStructure$ViewNodeText;,
        Landroid/app/assist/AssistStructure$ParcelTransferReader;,
        Landroid/app/assist/AssistStructure$ParcelTransferWriter;,
        Landroid/app/assist/AssistStructure$ViewStackEntry;,
        Landroid/app/assist/AssistStructure$SendChannel;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistStructure;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG_PARCEL:Z = false

.field static final DEBUG_PARCEL_CHILDREN:Z = false

.field static final DEBUG_PARCEL_TREE:Z = false

.field static final DESCRIPTOR:Ljava/lang/String; = "android.app.AssistStructure"

.field static final TAG:Ljava/lang/String; = "AssistStructure"

.field static final TRANSACTION_XFER:I = 0x2

.field static final VALIDATE_VIEW_TOKEN:I = 0x22222222

.field static final VALIDATE_WINDOW_TOKEN:I = 0x11111111


# instance fields
.field private mAcquisitionEndTime:J

.field private mAcquisitionStartTime:J

.field mActivityComponent:Landroid/content/ComponentName;

.field private mFlags:I

.field mHaveData:Z

.field private mIsHomeActivity:Z

.field final mPendingAsyncChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$ViewNodeBuilder;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveChannel:Landroid/os/IBinder;

.field mSanitizeOnWrite:Z

.field mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

.field mTmpRect:Landroid/graphics/Rect;

.field final mWindowNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$WindowNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/assist/AssistStructure$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    iput v0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    iput p3, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v1

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "AssistStructure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping window with dettached view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    new-instance v4, Landroid/app/assist/AssistStructure$WindowNode;

    invoke-direct {v4, p0, v2, p2, p3}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;ZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/app/assist/AssistStructure;)I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return v0
.end method

.method static synthetic access$002(Landroid/app/assist/AssistStructure;I)I
    .locals 0

    iput p1, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return p1
.end method

.method static synthetic access$100(Landroid/app/assist/AssistStructure;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$102(Landroid/app/assist/AssistStructure;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Landroid/app/assist/AssistStructure;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-wide v0
.end method

.method static synthetic access$202(Landroid/app/assist/AssistStructure;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-wide p1
.end method


# virtual methods
.method public clearSendChannel()V
    .locals 2

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "AssistStructure"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "View ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getId()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  ID: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdPackage()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v5, "AssistStructure"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollX()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollY()I

    move-result v4

    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    const-string v5, "AssistStructure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  Scroll: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTransformation()Landroid/graphics/Matrix;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "AssistStructure"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  Transformation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getElevation()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_5

    const-string v8, "AssistStructure"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Elevation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAlpha()F

    move-result v8

    cmpl-float v7, v8, v7

    if-eqz v7, :cond_6

    const-string v7, "AssistStructure"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Alpha: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v9, "AssistStructure"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Content description: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isSanitized()Z

    move-result v10

    if-nez v10, :cond_9

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REDACTED["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " chars]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_9
    :goto_0
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    nop

    const-string v11, "AssistStructure"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  Text (sel "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionStart()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionEnd()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "AssistStructure"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  Text size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSize()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " , style: #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextStyle()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "AssistStructure"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  Text color fg: #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextColor()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", bg: #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextBackgroundColor()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "AssistStructure"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  Input type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getInputType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "AssistStructure"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  Resource id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextIdEntry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    const-string v11, "AssistStructure"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  Web domain: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;

    move-result-object v11

    if-eqz v11, :cond_c

    const-string v12, "AssistStructure"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  HtmlInfo: tag="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/ViewStructure$HtmlInfo;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", attr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/ViewStructure$HtmlInfo;->getAttributes()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v12

    if-eqz v12, :cond_d

    const-string v13, "AssistStructure"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  LocaleList: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHint()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_e

    const-string v14, "AssistStructure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v2

    const-string v2, "  Hint: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    move/from16 v16, v2

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v14, "AssistStructure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v3

    const-string v3, "  Extras: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    move/from16 v17, v3

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isAssistBlocked()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "AssistStructure"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "  BLOCKED"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    if-nez v3, :cond_11

    const-string v14, "AssistStructure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v2

    const-string v2, " NO autofill ID"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_11
    move-object/from16 v18, v2

    const-string v2, "AssistStructure"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "Autofill info: id= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", options="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", hints="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillHints()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", sanitized="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isSanitized()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", importantFor="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getImportantForAutofill()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v2

    if-lez v2, :cond_13

    const-string v14, "AssistStructure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v3

    const-string v3, "  Children:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "    "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v2, :cond_12

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    move/from16 v20, v2

    move-object/from16 v2, p0

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v20

    move-object/from16 v0, p1

    goto :goto_5

    :cond_12
    move-object/from16 v15, p2

    move/from16 v20, v2

    move-object/from16 v2, p0

    goto :goto_6

    :cond_13
    move-object/from16 v15, p2

    move/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v2, p0

    :goto_6
    return-void
.end method

.method public dump(Z)V
    .locals 6

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, "AssistStructure"

    const-string v1, "dump(): calling ensureData() first"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    :cond_0
    const-string v0, "AssistStructure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AssistStructure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitize on write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AssistStructure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v2

    const-string v3, "AssistStructure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "  "

    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ensureData()V
    .locals 2

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    new-instance v0, Landroid/app/assist/AssistStructure$ParcelTransferReader;

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->go()V

    return-void
.end method

.method public ensureDataForAutofill()V
    .locals 2

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    :try_start_0
    new-instance v0, Landroid/app/assist/AssistStructure$ParcelTransferReader;

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->go()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    throw v0
.end method

.method public getAcquisitionEndTime()J
    .locals 2

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-wide v0
.end method

.method public getAcquisitionStartTime()J
    .locals 2

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-wide v0
.end method

.method public getActivityComponent()Landroid/content/ComponentName;
    .locals 1

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return v0
.end method

.method public getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;
    .locals 1

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure$WindowNode;

    return-object v0
.end method

.method public getWindowNodeCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isHomeActivity()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    return v0
.end method

.method public sanitizeForParceling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    return-void
.end method

.method public setAcquisitionEndTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-void
.end method

.method public setAcquisitionStartTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-void
.end method

.method public setActivityComponent(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    iput-object p1, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public setHomeActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    return-void
.end method

.method waitForReady()Z
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    :goto_0
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    sub-long v3, v1, v5

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "AssistStructure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping assist structure, waiting too long for async children (have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " remaining"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/assist/AssistStructure$SendChannel;

    invoke-direct {v0, p0}, Landroid/app/assist/AssistStructure$SendChannel;-><init>(Landroid/app/assist/AssistStructure;)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method
