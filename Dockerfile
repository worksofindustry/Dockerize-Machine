#
#
# Copyright 2019 Hydromax USA
#
# Creator: Matthew Linker, you may not use this file except in compliance with the License. Unless required by applicable law or agreed to in writing, 
# software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the 
# specific language governing permissions and limitations under the License.

##uncomment or comment out anything specific to your machine

FROM ubuntu:18.04

# Remove database's data, Uncomment out if machine has PostgreSQL
#/var/lib/postgresql


# Copy the whole system except what is specified in .dockerignore
COPY /boot /boot
COPY /bin /bin
COPY /etc /etc
COPY /home /home
COPY /lib /lib 
COPY /lib64 /lib64
COPY /usr /usr
COPY /var /var

