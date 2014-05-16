.class public Lcom/android/settings/grid/GridContainer;
.super Landroid/widget/GridView;
.source "GridContainer.java"


# instance fields
.field private curFocus:I

.field private prevFocus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->curFocus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->curFocus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->curFocus:I

    return-void
.end method


# virtual methods
.method public clearFocusedChild()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->curFocus:I

    return-void
.end method

.method public getPrevFocus()I
    .locals 1

    iget v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "GridContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevFocus  in onDraw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GridContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curFocus in onDraw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/grid/GridContainer;->curFocus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/GridContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    invoke-virtual {p0, v0}, Lcom/android/settings/grid/GridContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/grid/GridContainer;->clearFocusedChild()V

    return-void
.end method

.method public setCurFocus(I)V
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/settings/grid/GridContainer;->curFocus:I

    iput v0, p0, Lcom/android/settings/grid/GridContainer;->prevFocus:I

    :cond_0
    iput p1, p0, Lcom/android/settings/grid/GridContainer;->curFocus:I

    return-void
.end method
