/****************************************************************************
**
** Copyright (C) 1992-2009 Nokia. All rights reserved.
**
** This file is part of Qt Jambi.
**
** ** $BEGIN_LICENSE$
** Commercial Usage
** Licensees holding valid Qt Commercial licenses may use this file in
** accordance with the Qt Commercial License Agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and Nokia.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU Lesser General Public License version 2.1 requirements
** will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** In addition, as a special exception, Nokia gives you certain
** additional rights. These rights are described in the Nokia Qt LGPL
** Exception version 1.0, included in the file LGPL_EXCEPTION.txt in this
** package.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3.0 as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU General Public License version 3.0 requirements will be
** met: http://www.gnu.org/copyleft/gpl.html.
**
** If you are unsure which license is appropriate for your use, please
** contact the sales department at qt-sales@nokia.com.
** $END_LICENSE$

**
** This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
** WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
**
****************************************************************************/

#ifndef QTJAMBIFUNCTIONTABLE_H
#define QTJAMBIFUNCTIONTABLE_H

//#define QTJAMBI_EXPORT
#include "qtjambi_global.h"

#include <QtCore/QObject>

class QTJAMBI_EXPORT QtJambiFunctionTable
{
public:
    QtJambiFunctionTable(const QString &className, int size);
    ~QtJambiFunctionTable();

    inline int methodCount() const { return m_method_count; }

    inline QString className() const { return m_class_name; }

    inline jmethodID method(int pos) const;
    inline void setMethod(int pos, jmethodID methodId);

    void deref();
    void ref();

private:
    QString m_class_name;

    int m_method_count;
    jmethodID *m_method_ids;

    int m_reference_count;
};

QTJAMBI_EXPORT jmethodID QtJambiFunctionTable::method(int pos) const
{
    Q_ASSERT(pos >= 0);
    Q_ASSERT(pos < m_method_count);
    return m_method_ids[pos];
}


QTJAMBI_EXPORT void QtJambiFunctionTable::setMethod(int pos, jmethodID id)
{
    Q_ASSERT(pos >= 0);
    Q_ASSERT(pos < m_method_count);
    m_method_ids[pos] = id;
}

#endif // QTJAMBIFUNCTIONTABLE_H